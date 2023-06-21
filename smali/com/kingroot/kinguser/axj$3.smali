.class Lcom/kingroot/kinguser/axj$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->oG()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;

.field final synthetic aZk:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$3;->aZj:Lcom/kingroot/kinguser/axj;

    iput-object p2, p0, Lcom/kingroot/kinguser/axj$3;->aZk:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$3;->aZk:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    return-void
.end method
