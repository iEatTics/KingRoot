.class Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anC:Lcom/kingroot/kinguser/ahc;

.field final synthetic anD:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;Lcom/kingroot/kinguser/ahc;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;->anD:Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a;

    iput-object p2, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;->anC:Lcom/kingroot/kinguser/ahc;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 189
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/install/service/SilentInstallService$a$1;->anC:Lcom/kingroot/kinguser/ahc;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->a(Lcom/kingroot/kinguser/ahc;)V

    .line 190
    return-void
.end method
