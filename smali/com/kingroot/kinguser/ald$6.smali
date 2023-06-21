.class Lcom/kingroot/kinguser/ald$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingcore/uilib/ExpandableTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/ald;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avU:Lcom/kingroot/kinguser/ald;

.field final synthetic avW:Lcom/kingroot/kinguser/ald$a;

.field final synthetic avX:Ljava/lang/String;

.field final synthetic avY:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

.field final synthetic avZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ald;Ljava/lang/String;Lcom/kingroot/kinguser/ald$a;Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/kingroot/kinguser/ald$6;->avU:Lcom/kingroot/kinguser/ald;

    iput-object p2, p0, Lcom/kingroot/kinguser/ald$6;->avX:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iput-object p4, p0, Lcom/kingroot/kinguser/ald$6;->avY:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    iput-object p5, p0, Lcom/kingroot/kinguser/ald$6;->avZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ald$6;->avX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awl:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avY:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isExpand:Z

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->alk:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 310
    return-void
.end method

.method public c(Lcom/kingcore/uilib/ExpandableTextView;)V
    .locals 6

    .prologue
    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awk:Lcom/kingcore/uilib/ExpandableTextView;

    iget-object v1, p0, Lcom/kingroot/kinguser/ald$6;->avZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingcore/uilib/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->awl:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avY:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppUpdateModel;->isExpand:Z

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/ald$6;->avW:Lcom/kingroot/kinguser/ald$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/ald$a;->alk:Landroid/widget/ImageView;

    const/high16 v1, 0x43340000    # 180.0f

    const/4 v2, 0x0

    const-wide/16 v4, 0xc8

    invoke-static {v0, v1, v2, v4, v5}, Lcom/kingroot/kinguser/bhk;->b(Landroid/view/View;FFJ)V

    .line 320
    return-void
.end method
