.class Lcom/kingroot/common/uilib/banner/BannerView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/banner/BannerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final TH:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/common/uilib/banner/BannerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;)V
    .locals 1

    .prologue
    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$b;->TH:Ljava/lang/ref/WeakReference;

    .line 960
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/common/uilib/banner/BannerView;Lcom/kingroot/common/uilib/banner/BannerView$1;)V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0, p1}, Lcom/kingroot/common/uilib/banner/BannerView$b;-><init>(Lcom/kingroot/common/uilib/banner/BannerView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/kingroot/common/uilib/banner/BannerView$b;->TH:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/banner/BannerView;

    .line 965
    if-eqz v0, :cond_0

    .line 966
    invoke-static {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->k(Lcom/kingroot/common/uilib/banner/BannerView;)V

    .line 967
    invoke-virtual {v0}, Lcom/kingroot/common/uilib/banner/BannerView;->os()V

    .line 969
    :cond_0
    return-void
.end method
