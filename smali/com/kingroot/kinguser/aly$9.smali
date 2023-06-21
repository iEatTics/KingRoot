.class Lcom/kingroot/kinguser/aly$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aly;->s(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic azo:I

.field final synthetic this$0:Lcom/kingroot/kinguser/aly;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aly;I)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/kingroot/kinguser/aly$9;->this$0:Lcom/kingroot/kinguser/aly;

    iput p2, p0, Lcom/kingroot/kinguser/aly$9;->azo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/kingroot/kinguser/aly$9;->this$0:Lcom/kingroot/kinguser/aly;

    invoke-static {v0}, Lcom/kingroot/kinguser/aly;->g(Lcom/kingroot/kinguser/aly;)Lcom/kingroot/common/uilib/WellChosenOuterGuideView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/aly$9$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/aly$9$1;-><init>(Lcom/kingroot/kinguser/aly$9;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/common/uilib/WellChosenOuterGuideView;->c(Lcom/android/animation/AnimatorListenerAdapter;)V

    .line 498
    return-void
.end method
