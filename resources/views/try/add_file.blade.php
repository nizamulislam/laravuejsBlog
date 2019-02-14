<form action="{{url('/add')}}" method="post" enctype="multipart/form-data">
    {{csrf_field()}}
    <table>
        <tr>
            <td>PDF</td>
            <td>
                <input type="file" name="my_file">
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="btn" value="Save">
            </td>
        </tr>
    </table>
</form>