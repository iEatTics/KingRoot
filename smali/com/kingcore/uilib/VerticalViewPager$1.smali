.class final Lcom/kingcore/uilib/VerticalViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingcore/uilib/VerticalViewPager$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingcore/uilib/VerticalViewPager$b;Lcom/kingcore/uilib/VerticalViewPager$b;)I
    .locals 2

    .prologue
    .line 90
    iget v0, p1, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    iget v1, p2, Lcom/kingcore/uilib/VerticalViewPager$b;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 87
    check-cast p1, Lcom/kingcore/uilib/VerticalViewPager$b;

    check-cast p2, Lcom/kingcore/uilib/VerticalViewPager$b;

    invoke-virtual {p0, p1, p2}, Lcom/kingcore/uilib/VerticalViewPager$1;->a(Lcom/kingcore/uilib/VerticalViewPager$b;Lcom/kingcore/uilib/VerticalViewPager$b;)I

    move-result v0

    return v0
.end method
