.class Lcom/kingroot/kinguser/bin$a$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bin$a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic btU:Lorg/json/JSONObject;

.field final synthetic btV:Lcom/kingroot/kinguser/bin$a$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bin$a$6;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/kingroot/kinguser/bin$a$6$1;->btV:Lcom/kingroot/kinguser/bin$a$6;

    iput-object p2, p0, Lcom/kingroot/kinguser/bin$a$6$1;->btU:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 753
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$6$1;->btV:Lcom/kingroot/kinguser/bin$a$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a$6;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/kingroot/kinguser/bin$a$6$1;->btV:Lcom/kingroot/kinguser/bin$a$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a$6;->btN:Lcom/kingroot/kinguser/bin$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/bin$a;->btK:Lcom/kingroot/kinguser/bin;

    invoke-static {v0}, Lcom/kingroot/kinguser/bin;->b(Lcom/kingroot/kinguser/bin;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "javascript:handleMessageFromTcs(\'onCallback\', \'%s\')"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/kingroot/kinguser/bin$a$6$1;->btU:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 756
    :cond_0
    return-void
.end method
