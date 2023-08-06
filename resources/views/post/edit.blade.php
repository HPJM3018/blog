<x-app-layout>
<x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            Editer {{ $post->title }}
        </h2>
    </x-slot>
    <div class="my-5">
            @foreach($errors->all() as $error)
                <span class="block text-red-500">{{$error}} </span>
            @endforeach
        </div>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <form action="{{route('posts.update',$post)}}" method="post"  enctype="multipart/form-data" class="mt-10">
        @method('put')
        @csrf    
        <x-label for="title" value="Titre du post"/> 
            <x-input id="title" name="title" value="{{$post->title}}"/> 

            <x-label for="contenu" value="contenu du post"/> 
            <textarea name="content" id="content">{{$post->content}}</textarea>

            <x-label for="image" value="Image du Post"/>
            <x-input id="image"  type="file" name="image"/> 

            <x-label for="Category" value="Categories du post"/> 
            <select name="category" id="category">
                @foreach($categories as $category)
                    <option value="{{$category->id }}" {{ $post->category_id == $category->id ? 'selected': ''}}> {{$category->name}} </option>
                @endforeach
            </select>
            <x-button class="mt-5" style="display:block !important;"> Modifier  mon post </x-button>
        </form>
    </div>
</x-app-layout>