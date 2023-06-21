.class Lcom/kingroot/kinguser/cfg$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfg;->a(Lcom/kingroot/kinguser/cfg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cbm:Lcom/kingroot/kinguser/cfg;

.field final synthetic cbt:Lcom/kingroot/kinguser/cfg$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfg;Lcom/kingroot/kinguser/cfg$a;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/kingroot/kinguser/cfg$7;->cbm:Lcom/kingroot/kinguser/cfg;

    iput-object p2, p0, Lcom/kingroot/kinguser/cfg$7;->cbt:Lcom/kingroot/kinguser/cfg$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/cfg$7;->cbm:Lcom/kingroot/kinguser/cfg;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iget-object v2, p0, Lcom/kingroot/kinguser/cfg$7;->cbt:Lcom/kingroot/kinguser/cfg$a;

    iget v2, v2, Lcom/kingroot/kinguser/cfg$a;->cbu:I

    iget-object v4, p0, Lcom/kingroot/kinguser/cfg$7;->cbt:Lcom/kingroot/kinguser/cfg$a;

    iget v4, v4, Lcom/kingroot/kinguser/cfg$a;->mCmdId:I

    const/4 v5, 0x0

    const v6, -0x1f47d0

    invoke-static {v6}, Lcom/kingroot/kinguser/cen;->kY(I)I

    move-result v6

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/kingroot/kinguser/cfg;->a(IIII[BII)V

    .line 297
    return-void
.end method
