using System.Text.Json.Serialization;

namespace Blogwasm.Models;
public class BlogItem
{
    [JsonPropertyName("name")]
    public string? Name {get; set;}
    [JsonPropertyName("fileName")]
    public string? FileName {get; set;}
    [JsonPropertyName("url")]
    public string? Url {get; set;}
}