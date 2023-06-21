.class Lcom/kingroot/kinguser/aga$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aga$d;->a(Lcom/kingroot/kinguser/aga$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ajN:Ljava/lang/String;

.field final synthetic ajO:Lcom/kingroot/kinguser/aga$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aga$d;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/aga$d$1;->ajO:Lcom/kingroot/kinguser/aga$d;

    iput-object p2, p0, Lcom/kingroot/kinguser/aga$d$1;->ajN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/kingroot/kinguser/aga$d$1;->ajO:Lcom/kingroot/kinguser/aga$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/aga$d;->ajM:Lcom/kingroot/kinguser/aga;

    invoke-static {v0}, Lcom/kingroot/kinguser/aga;->a(Lcom/kingroot/kinguser/aga;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/aga$b;

    .line 116
    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/kingroot/kinguser/aga$d$1;->ajN:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/aga$b;->fn(Ljava/lang/String;)V

    .line 119
    :cond_0
    return-void
.end method
