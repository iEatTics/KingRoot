.class Lcom/kingroot/kinguser/bjr$17;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byr:Lcom/kingroot/kinguser/bjr;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjr;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/kingroot/kinguser/bjr$17;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 799
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$17;->byr:Lcom/kingroot/kinguser/bjr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bjr;->a(Lcom/kingroot/kinguser/bjr;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 802
    iget-object v0, p0, Lcom/kingroot/kinguser/bjr$17;->byr:Lcom/kingroot/kinguser/bjr;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjr;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
