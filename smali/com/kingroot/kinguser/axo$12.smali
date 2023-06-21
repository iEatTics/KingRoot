.class Lcom/kingroot/kinguser/axo$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axo;->a(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/axo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axo;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/kingroot/kinguser/axo$12;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/kingroot/kinguser/axo$12;->this$0:Lcom/kingroot/kinguser/axo;

    invoke-static {v0}, Lcom/kingroot/kinguser/axo;->k(Lcom/kingroot/kinguser/axo;)V

    .line 649
    return-void
.end method
