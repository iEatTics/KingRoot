.class Lcom/kingroot/kinguser/byd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/byd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final bTP:Landroid/view/View$OnTouchListener;

.field final synthetic bTQ:Lcom/kingroot/kinguser/byd;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/byd;Landroid/view/View$OnTouchListener;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/kingroot/kinguser/byd$a;->bTQ:Lcom/kingroot/kinguser/byd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/kingroot/kinguser/byd$a;->bTP:Landroid/view/View$OnTouchListener;

    .line 119
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/kingroot/kinguser/byd$a;->bTQ:Lcom/kingroot/kinguser/byd;

    invoke-static {v0}, Lcom/kingroot/kinguser/byd;->a(Lcom/kingroot/kinguser/byd;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/byf;

    .line 124
    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/byf;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/byd$a;->bTP:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/byd$a;->bTP:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 130
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
