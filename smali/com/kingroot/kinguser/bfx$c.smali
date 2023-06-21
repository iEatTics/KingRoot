.class public Lcom/kingroot/kinguser/bfx$c;
.super Lcom/kingroot/kinguser/bfx$a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bfx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private alK:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/bfx$e;",
            ">;"
        }
    .end annotation
.end field

.field public bnL:Landroid/widget/TextView;

.field public bnM:Landroid/widget/TextView;

.field public bnO:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/kingroot/kinguser/bfx$e;)V
    .locals 1

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfx$a;-><init>(Landroid/view/View;)V

    .line 226
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v0, 0x7f0f00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnL:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0f0220

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnM:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0f025f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnO:Landroid/widget/ImageView;

    .line 230
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnO:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    if-eqz p2, :cond_0

    .line 232
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->alK:Ljava/lang/ref/WeakReference;

    .line 234
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfx$c;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->alK:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private g(Landroid/view/View;I)V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/kingroot/kinguser/aic;

    invoke-direct {v1, v0, p1}, Lcom/kingroot/kinguser/aic;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 239
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f07050d

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f0702f6

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v3, Lcom/kingroot/kinguser/aic$b;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/kingroot/kinguser/aic$b;-><init>(Landroid/content/Context;Ljava/util/List;ZLcom/kingroot/kinguser/aic$a;)V

    .line 244
    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/aic;->Y(Ljava/util/List;)V

    .line 245
    invoke-virtual {v1, v3}, Lcom/kingroot/kinguser/aic;->a(Lcom/kingroot/kinguser/aic$b;)V

    .line 247
    new-instance v0, Lcom/kingroot/kinguser/bfx$c$1;

    invoke-direct {v0, p0, v1, p2}, Lcom/kingroot/kinguser/bfx$c$1;-><init>(Lcom/kingroot/kinguser/bfx$c;Lcom/kingroot/kinguser/aic;I)V

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/aic;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    invoke-virtual {v1}, Lcom/kingroot/kinguser/aic;->show()V

    .line 270
    return-void
.end method


# virtual methods
.method public j(Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;)V
    .locals 6

    .prologue
    .line 292
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnL:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->bnM:Landroid/widget/TextView;

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f070506

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaP()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/kingroot/kinguser/urlcheck/db/UrlCheckLog;->aaQ()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfx$c;->getAdapterPosition()I

    move-result v1

    .line 280
    if-gez v1, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 276
    :pswitch_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bfx$c;->getAdapterPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/kingroot/kinguser/bfx$c;->g(Landroid/view/View;I)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->alK:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/bfx$c;->alK:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bfx$e;

    invoke-interface {v0, p1, v1}, Lcom/kingroot/kinguser/bfx$e;->c(Landroid/view/View;I)V

    goto :goto_0

    .line 274
    :pswitch_data_0
    .packed-switch 0x7f0f025f
        :pswitch_0
    .end packed-switch
.end method
