.class Lcom/kingroot/kinguser/bjc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bjc;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bvF:Lcom/kingroot/kinguser/bjc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjc;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/kingroot/kinguser/bjc$1;->bvF:Lcom/kingroot/kinguser/bjc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc$1;->bvF:Lcom/kingroot/kinguser/bjc;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjc;->a(Lcom/kingroot/kinguser/bjc;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/kingroot/kinguser/bjc$1;->bvF:Lcom/kingroot/kinguser/bjc;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjc;->a(Lcom/kingroot/kinguser/bjc;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 129
    :cond_0
    return-void
.end method
