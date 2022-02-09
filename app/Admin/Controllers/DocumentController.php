<?php

namespace App\Admin\Controllers;

use App\Models\Document;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class DocumentController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Tài liệu';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Document());

        $grid->filter(function($filter) {
            $filter->expand();
            $filter->disableIdFilter();

            $filter->like('title', 'Tên danh mục');
        });

        $grid->rows(function (Grid\Row $row) {
            $row->column('number', ($row->number+1));
        });
        $grid->column('number', 'STT');
        $grid->title('Tên danh mục');
        $grid->column('created_at', 'Ngày tạo')->display(function () {
            return date('H:i | d-m-Y', strtotime($this->created_at));
        });
        $grid->column('updated_at', 'Ngày cập nhật')->display(function () {
            return date('H:i | d-m-Y', strtotime($this->updated_at));
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed   $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Document::findOrFail($id));

        $show->title('Tên tài liệu');
        $show->column('created_at', 'Ngày tạo')->as(function () {
            return date('H:i | d-m-Y', strtotime($this->created_at));
        });
        $show->column('updated_at', 'Ngày cập nhật')->as(function () {
            return date('H:i | d-m-Y', strtotime($this->updated_at));
        });

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Document);

        $form->text('title', 'Tiêu đề')->rules(['required']);
        $form->multipleFile('file', 'File đính kèm')->removable();
        $form->display('created_at', 'Ngày tạo');
        $form->display('updated_at', 'Ngày cập nhật');

        return $form;
    }
}
