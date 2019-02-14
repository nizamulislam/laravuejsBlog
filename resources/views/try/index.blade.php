<table>
    <tr>
        <th>#</th>
        <th>Files</th>
        <th>Action</th>
    </tr>
    @foreach($alldata as $data)
        <tr>
            <td>{{$data->id}}</td>
            <td>

                <a href="{{ asset($data->upload_file) }}">Open the pdf!</a>
            </td>
            <td>
                <a href="">Edit</a>
            </td>

        </tr>
        @endforeach
</table>