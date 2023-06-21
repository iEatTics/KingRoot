.class Lcom/kingroot/kinguser/asl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/asl;->NY()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMY:Lcom/kingroot/kinguser/asl;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/asl;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/kingroot/kinguser/asl$3;->aMY:Lcom/kingroot/kinguser/asl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/kingroot/kinguser/asl$3;->aMY:Lcom/kingroot/kinguser/asl;

    invoke-static {v0}, Lcom/kingroot/kinguser/asl;->a(Lcom/kingroot/kinguser/asl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    iget-object v0, p0, Lcom/kingroot/kinguser/asl$3;->aMY:Lcom/kingroot/kinguser/asl;

    invoke-static {v0}, Lcom/kingroot/kinguser/asl;->b(Lcom/kingroot/kinguser/asl;)V

    .line 480
    return-void
.end method
