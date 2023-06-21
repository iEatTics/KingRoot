.class Lcom/kingroot/kinguser/aut$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aut;->cj(J)Lcom/kingroot/kinguser/bde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic aSO:Lcom/kingroot/kinguser/aut;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aut;)V
    .locals 0

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/kingroot/kinguser/aut$6;->aSO:Lcom/kingroot/kinguser/aut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;)I
    .locals 4

    .prologue
    .line 1197
    iget-wide v0, p2, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->when:J

    iget-wide v2, p1, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->when:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1194
    check-cast p1, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;

    check-cast p2, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;

    invoke-virtual {p0, p1, p2}, Lcom/kingroot/kinguser/aut$6;->a(Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;)I

    move-result v0

    return v0
.end method
