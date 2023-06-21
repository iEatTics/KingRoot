.class public Lcom/kingroot/kinguser/adg;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/adg$a;,
        Lcom/kingroot/kinguser/adg$b;
    }
.end annotation


# instance fields
.field private acr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private acs:Lcom/kingroot/kinguser/adg$a;

.field private act:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kingroot/kinguser/adg;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/kingroot/kinguser/adg;->acr:Ljava/util/ArrayList;

    .line 28
    iput p3, p0, Lcom/kingroot/kinguser/adg;->act:I

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adg;I)I
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/kingroot/kinguser/adg;->act:I

    return p1
.end method

.method static synthetic a(Lcom/kingroot/kinguser/adg;)Lcom/kingroot/kinguser/adg$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kingroot/kinguser/adg;->acs:Lcom/kingroot/kinguser/adg$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/adg$a;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/kingroot/kinguser/adg;->acs:Lcom/kingroot/kinguser/adg$a;

    .line 40
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/adg;->acr:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 60
    if-nez p2, :cond_1

    .line 61
    new-instance v1, Lcom/kingroot/kinguser/adg$b;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/adg$b;-><init>(Lcom/kingroot/kinguser/adg;)V

    .line 62
    iget-object v0, p0, Lcom/kingroot/kinguser/adg;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0300d4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/adg$b;->mTextView:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f0233

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    .line 71
    :goto_0
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 72
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    new-instance v2, Lcom/kingroot/kinguser/adg$1;

    invoke-direct {v2, p0, p1}, Lcom/kingroot/kinguser/adg$1;-><init>(Lcom/kingroot/kinguser/adg;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget v1, p0, Lcom/kingroot/kinguser/adg;->act:I

    if-ne v1, p1, :cond_2

    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02020a

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 91
    :goto_1
    if-eqz v1, :cond_0

    .line 92
    iget-object v2, v0, Lcom/kingroot/kinguser/adg$b;->acv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    :cond_0
    iget-object v1, v0, Lcom/kingroot/kinguser/adg$b;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/kingroot/kinguser/adg;->acr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance v0, Lcom/kingroot/kinguser/adg$2;

    invoke-direct {v0, p0, p1}, Lcom/kingroot/kinguser/adg$2;-><init>(Lcom/kingroot/kinguser/adg;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object p2

    .line 67
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/adg$b;

    goto :goto_0

    .line 88
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f02020b

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method
