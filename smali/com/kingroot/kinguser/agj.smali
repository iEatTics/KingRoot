.class public Lcom/kingroot/kinguser/agj;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/agj$b;,
        Lcom/kingroot/kinguser/agj$a;
    }
.end annotation


# static fields
.field private static final amI:Ljava/lang/String;

.field private static final amJ:Ljava/lang/String;

.field private static final amK:Ljava/lang/String;

.field private static final amL:Ljava/lang/String;


# instance fields
.field private alI:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agj$b;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070330

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agj;->amI:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070331

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agj;->amJ:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07032f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agj;->amK:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07032e

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agj;->amL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/agj$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/kingroot/kinguser/agj;->alI:Ljava/util/List;

    .line 32
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/agj;->amI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/agj;->amJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/agj;->amL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic pC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kingroot/kinguser/agj;->amK:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/agj;->alI:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/agj;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 51
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0, p2}, Lcom/kingroot/kinguser/agj;->getItemViewType(I)I

    .line 43
    iget-object v0, p0, Lcom/kingroot/kinguser/agj;->alI:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agj$b;

    .line 44
    check-cast p1, Lcom/kingroot/kinguser/agj$a;

    .line 45
    invoke-virtual {p1, v0}, Lcom/kingroot/kinguser/agj$a;->a(Lcom/kingroot/kinguser/agj$b;)V

    .line 46
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/kingroot/kinguser/agj$a;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/agj$a;-><init>(Lcom/kingroot/kinguser/agj;Landroid/view/View;)V

    return-object v1
.end method
