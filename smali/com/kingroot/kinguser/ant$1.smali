.class Lcom/kingroot/kinguser/ant$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ant;->oI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aBY:I

.field final synthetic this$0:Lcom/kingroot/kinguser/ant;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ant;I)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/ant$1;->this$0:Lcom/kingroot/kinguser/ant;

    iput p2, p0, Lcom/kingroot/kinguser/ant$1;->aBY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/kingroot/kinguser/ant$1;->this$0:Lcom/kingroot/kinguser/ant;

    invoke-static {v0}, Lcom/kingroot/kinguser/ant;->e(Lcom/kingroot/kinguser/ant;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/ant$1;->aBY:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 174
    return-void
.end method
