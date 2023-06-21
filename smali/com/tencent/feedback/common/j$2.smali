.class final Lcom/tencent/feedback/common/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/feedback/common/j;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/tencent/feedback/common/j;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/common/j;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/tencent/feedback/common/j$2;->a:Lcom/tencent/feedback/common/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tencent/feedback/common/j$2;->a:Lcom/tencent/feedback/common/j;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/j;->j()Z

    .line 299
    return-void
.end method
