.class Lcom/kingroot/kinguser/bjt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjt;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic byF:Lcom/kingroot/kinguser/bjt;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjt;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/bjt$1;->byF:Lcom/kingroot/kinguser/bjt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt$1;->byF:Lcom/kingroot/kinguser/bjt;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjt;->a(Lcom/kingroot/kinguser/bjt;)Lcom/kingroot/kinguser/adf$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt$1;->byF:Lcom/kingroot/kinguser/bjt;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjt;->a(Lcom/kingroot/kinguser/bjt;)Lcom/kingroot/kinguser/adf$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/kingroot/kinguser/adf$b;->m(Landroid/view/View;)Z

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjt$1;->byF:Lcom/kingroot/kinguser/bjt;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->dismiss()V

    .line 63
    return-void
.end method
