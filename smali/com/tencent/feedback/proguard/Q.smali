.class public final Lcom/tencent/feedback/proguard/Q;
.super Lcom/tencent/feedback/proguard/j;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/feedback/proguard/j;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/proguard/Q;->a:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/feedback/proguard/Q;->b:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/feedback/proguard/h;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/feedback/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/proguard/Q;->a:Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v1, v1}, Lcom/tencent/feedback/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/feedback/proguard/Q;->b:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public final a(Lcom/tencent/feedback/proguard/i;)V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/feedback/proguard/Q;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/feedback/proguard/i;->a(Ljava/lang/String;I)V

    .line 31
    iget-object v0, p0, Lcom/tencent/feedback/proguard/Q;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/feedback/proguard/i;->a(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
