.class Lcom/kingcore/uilib/VerticalViewPager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic DV:Lcom/kingcore/uilib/VerticalViewPager;


# direct methods
.method constructor <init>(Lcom/kingcore/uilib/VerticalViewPager;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/kingcore/uilib/VerticalViewPager$3;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager$3;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingcore/uilib/VerticalViewPager;->a(Lcom/kingcore/uilib/VerticalViewPager;I)V

    .line 215
    iget-object v0, p0, Lcom/kingcore/uilib/VerticalViewPager$3;->DV:Lcom/kingcore/uilib/VerticalViewPager;

    invoke-virtual {v0}, Lcom/kingcore/uilib/VerticalViewPager;->populate()V

    .line 216
    return-void
.end method
