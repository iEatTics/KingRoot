.class Lcom/kingroot/kinguser/awt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/awt;->vy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/awt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/awt;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/kingroot/kinguser/awt$3;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/kingroot/kinguser/awt$3;->this$0:Lcom/kingroot/kinguser/awt;

    invoke-static {v0}, Lcom/kingroot/kinguser/awt;->e(Lcom/kingroot/kinguser/awt;)Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bat;->b(Lcom/kingroot/kingmaster/network/updata/ICheckIPCListener;)V

    .line 505
    return-void
.end method
