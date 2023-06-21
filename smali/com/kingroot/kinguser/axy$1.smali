.class Lcom/kingroot/kinguser/axy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axy;->UH()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bcv:Ljava/lang/String;

.field final synthetic bcw:Lcom/kingroot/kinguser/axy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    iput-object p2, p0, Lcom/kingroot/kinguser/axy$1;->bcv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->TT()V

    .line 175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->a(Lcom/kingroot/kinguser/axy;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kingroot/kinguser/webview/WebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 177
    const-string v1, "url"

    iget-object v2, p0, Lcom/kingroot/kinguser/axy$1;->bcv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->b(Lcom/kingroot/kinguser/axy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axy;->a(Lcom/kingroot/kinguser/axy;Z)Z

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    .line 181
    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    const/4 v4, 0x2

    .line 180
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/ady;->a(JII)V

    .line 183
    sget-object v0, Lcom/kingroot/kinguser/aea$b;->aeC:Lcom/kingroot/kinguser/aea$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$1;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$b;JI)V

    .line 184
    return-void
.end method
