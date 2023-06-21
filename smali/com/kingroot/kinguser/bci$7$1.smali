.class Lcom/kingroot/kinguser/bci$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bci$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bgw:Lcom/kingroot/kinguser/bci$7;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bci$7;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/kingroot/kinguser/bci$7$1;->bgw:Lcom/kingroot/kinguser/bci$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/bci$7$1;->bgw:Lcom/kingroot/kinguser/bci$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/bci$7;->this$0:Lcom/kingroot/kinguser/bci;

    const/16 v1, 0x3e7

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bci;->e(Lcom/kingroot/kinguser/bci;I)V

    .line 395
    return-void
.end method
