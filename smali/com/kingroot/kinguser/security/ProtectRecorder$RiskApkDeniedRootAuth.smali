.class public Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;
.super Lcom/kingroot/kinguser/security/ProtectRecorder$Time;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/security/ProtectRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RiskApkDeniedRootAuth"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/security/ProtectRecorder;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->this$0:Lcom/kingroot/kinguser/security/ProtectRecorder;

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/security/ProtectRecorder$Time;-><init>(Lcom/kingroot/kinguser/security/ProtectRecorder;)V

    .line 119
    iput-object p2, p0, Lcom/kingroot/kinguser/security/ProtectRecorder$RiskApkDeniedRootAuth;->pkgName:Ljava/lang/String;

    .line 120
    return-void
.end method
