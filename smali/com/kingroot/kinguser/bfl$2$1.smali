.class Lcom/kingroot/kinguser/bfl$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmV:Lcom/kingroot/kinguser/bfl$2;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfl$2;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfl$2;->yu:Landroid/content/Context;

    iget-object v1, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    iget v1, v1, Lcom/kingroot/kinguser/bfl$2;->bmT:I

    iget-object v2, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    iget-object v2, v2, Lcom/kingroot/kinguser/bfl$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bwl;->a(Landroid/content/Context;ILandroid/view/View;)Z

    .line 49
    iget-object v0, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    iget v0, v0, Lcom/kingroot/kinguser/bfl$2;->bmT:I

    iget-object v1, p0, Lcom/kingroot/kinguser/bfl$2$1;->bmV:Lcom/kingroot/kinguser/bfl$2;

    iget-object v1, v1, Lcom/kingroot/kinguser/bfl$2;->val$view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bwl;->c(ILandroid/view/View;)Z

    .line 50
    return-void
.end method
