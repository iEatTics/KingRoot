.class Lcom/kingroot/kinguser/bfl$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmU:Lcom/kingroot/kinguser/bfl$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfl$1;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/kingroot/kinguser/bfl$1$1;->bmU:Lcom/kingroot/kinguser/bfl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bfl$1$1;->bmU:Lcom/kingroot/kinguser/bfl$1;

    iget v0, v0, Lcom/kingroot/kinguser/bfl$1;->bmT:I

    iget-object v1, p0, Lcom/kingroot/kinguser/bfl$1$1;->bmU:Lcom/kingroot/kinguser/bfl$1;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfl$1;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bwl;->c(ILandroid/view/View;)Z

    .line 28
    return-void
.end method
