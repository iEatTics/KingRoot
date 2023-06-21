.class final Lcom/tencent/feedback/proguard/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/proguard/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:B

.field private synthetic b:Lcom/tencent/feedback/proguard/z;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/proguard/z;B)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/tencent/feedback/proguard/z$4;->b:Lcom/tencent/feedback/proguard/z;

    iput-byte p2, p0, Lcom/tencent/feedback/proguard/z$4;->a:B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/feedback/proguard/z$4;->b:Lcom/tencent/feedback/proguard/z;

    invoke-virtual {v0}, Lcom/tencent/feedback/proguard/z;->h()Lcom/tencent/feedback/upload/e;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_0

    .line 376
    new-instance v1, Lcom/tencent/feedback/proguard/B;

    iget-object v2, p0, Lcom/tencent/feedback/proguard/z$4;->b:Lcom/tencent/feedback/proguard/z;

    invoke-static {v2}, Lcom/tencent/feedback/proguard/z;->a(Lcom/tencent/feedback/proguard/z;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/feedback/proguard/z;->a()Lcom/tencent/feedback/proguard/z;

    move-result-object v3

    iget-byte v4, p0, Lcom/tencent/feedback/proguard/z$4;->a:B

    invoke-direct {v1, v2, v3, v4}, Lcom/tencent/feedback/proguard/B;-><init>(Landroid/content/Context;Lcom/tencent/feedback/proguard/z;B)V

    invoke-interface {v0, v1}, Lcom/tencent/feedback/upload/e;->a(Lcom/tencent/feedback/upload/AbstractUploadDatas;)V

    .line 379
    :cond_0
    return-void
.end method
