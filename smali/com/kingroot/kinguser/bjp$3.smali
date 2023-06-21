.class Lcom/kingroot/kinguser/bjp$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bxJ:Lcom/kingroot/kinguser/bjp;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjp;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 267
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjp;->d(Lcom/kingroot/kinguser/bjp;)Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v2}, Lcom/kingroot/kinguser/bjp;->c(Lcom/kingroot/kinguser/bjp;)Lcom/kingroot/kinguser/aex$a;

    move-result-object v2

    iget-object v2, v2, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v2, v2, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 270
    iget-object v1, p0, Lcom/kingroot/kinguser/bjp$3;->bxJ:Lcom/kingroot/kinguser/bjp;

    invoke-static {v1}, Lcom/kingroot/kinguser/bjp;->f(Lcom/kingroot/kinguser/bjp;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/kingroot/kinguser/bjp$3$1;

    invoke-direct {v4, p0, v0, v2, v3}, Lcom/kingroot/kinguser/bjp$3$1;-><init>(Lcom/kingroot/kinguser/bjp$3;Ljava/lang/String;J)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void
.end method
