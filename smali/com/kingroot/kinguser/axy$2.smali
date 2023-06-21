.class Lcom/kingroot/kinguser/axy$2;
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
.field final synthetic bcw:Lcom/kingroot/kinguser/axy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axy;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 200
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v0, v4}, Lcom/kingroot/kinguser/axy;->b(Lcom/kingroot/kinguser/axy;Z)Z

    .line 201
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->TT()V

    .line 202
    iget-object v0, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/axy;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    .line 204
    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    .line 203
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/kingroot/kinguser/ady;->a(JII)V

    .line 206
    sget-object v0, Lcom/kingroot/kinguser/aea$b;->aeB:Lcom/kingroot/kinguser/aea$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget-wide v2, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->gt:J

    iget-object v1, p0, Lcom/kingroot/kinguser/axy$2;->bcw:Lcom/kingroot/kinguser/axy;

    invoke-static {v1}, Lcom/kingroot/kinguser/axy;->c(Lcom/kingroot/kinguser/axy;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v1

    iget v1, v1, Lcom/kingroot/kinguser/ad/SplashDisplayModel;->ajv:I

    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aea;->a(Lcom/kingroot/kinguser/aea$b;JI)V

    .line 207
    return-void
.end method
