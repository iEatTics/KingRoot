.class public Lcom/kingroot/kinguser/ayu$b;
.super Lcom/kingroot/kinguser/aov;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ayu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/kingroot/kinguser/aov;-><init>()V

    return-void
.end method


# virtual methods
.method protected IN()Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/ayu$a;->Vk()Lcom/kingroot/kinguser/ayu$a;

    move-result-object v0

    return-object v0
.end method
