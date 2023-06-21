.class Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private ain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;",
            ">;"
        }
    .end annotation
.end field

.field private ait:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 278
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ait:Ljava/util/HashSet;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    .line 282
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 283
    iput-object p2, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 286
    iget-boolean v2, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->afR:Z

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ait:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ait:Ljava/util/HashSet;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 304
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 314
    if-nez p2, :cond_0

    .line 315
    new-instance v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;

    invoke-direct {v1}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;-><init>()V

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0300cb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 317
    const v0, 0x7f0f0148

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->afU:Landroid/widget/ImageView;

    .line 318
    const v0, 0x7f0f00d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->age:Landroid/widget/TextView;

    .line 319
    const v0, 0x7f0f014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->mCheckBox:Landroid/widget/CheckBox;

    .line 320
    iget-object v0, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ain:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;

    .line 327
    iget-object v2, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 328
    iget-object v2, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v3, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;

    invoke-direct {v3, p0, v0}, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c$1;-><init>(Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 341
    iget-object v2, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v3, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->afR:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 344
    iget-object v2, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->age:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 347
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v2

    iget-object v0, v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$a;->pkgName:Ljava/lang/String;

    iget-object v3, v1, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;->afU:Landroid/widget/ImageView;

    const v4, 0x7f02016a

    invoke-virtual {v2, v0, v3, v4}, Lcom/kingroot/kinguser/acr;->a(Ljava/lang/String;Landroid/widget/ImageView;I)V

    .line 349
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 351
    return-object p2

    .line 322
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$b;

    move-object v1, v0

    goto :goto_0
.end method

.method public vu()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/activitys/DisablePkgActorActivity$c;->ait:Ljava/util/HashSet;

    return-object v0
.end method
