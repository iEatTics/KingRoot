.class Lcom/kingroot/kinguser/ale$d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ale$d;->a(Lcom/kingroot/kinguser/ame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avX:Ljava/lang/String;

.field final synthetic avZ:Ljava/lang/String;

.field final synthetic awr:Lcom/kingroot/kinguser/ale$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ale$d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iput-object p2, p0, Lcom/kingroot/kinguser/ale$d$3;->avX:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/ale$d$3;->avZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    .line 350
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->avX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d$3;->avX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awl:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->alk:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 355
    return-void
.end method

.method public c(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    .line 359
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->avZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ale$d$3;->avZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->awl:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/kingroot/kinguser/ale$d$3;->awr:Lcom/kingroot/kinguser/ale$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/ale$d;->alk:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 364
    return-void
.end method
