.class Lcom/kingcore/uilib/VerticalViewPager$e;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic DV:Lcom/kingcore/uilib/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/kingcore/uilib/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 2722
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager$e;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingcore/uilib/VerticalViewPager;Lcom/kingcore/uilib/VerticalViewPager$1;)V
    .locals 0

    .prologue
    .line 2722
    invoke-direct {p0, p1}, Lcom/kingcore/uilib/VerticalViewPager$e;-><init>(Lcom/kingcore/uilib/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager$e;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0}, Lcom/kingcore/uilib/VerticalViewPager;->dataSetChanged()V

    .line 2726
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager$e;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0}, Lcom/kingcore/uilib/VerticalViewPager;->dataSetChanged()V

    .line 2731
    return-void
.end method
