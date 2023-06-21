.class public Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public Bk:Ljava/lang/String;

.field public agX:J

.field public agY:Ljava/lang/String;

.field public agZ:Z

.field public aha:Z

.field public ahb:Z

.field public ahc:I

.field public ahd:J

.field public ahe:J

.field public classify:I

.field public mAppName:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 883
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 884
    iput-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mAppName:Ljava/lang/String;

    .line 885
    iput-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->mPackageName:Ljava/lang/String;

    .line 886
    iput-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->Bk:Ljava/lang/String;

    .line 887
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agX:J

    .line 888
    iput-object v3, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agY:Ljava/lang/String;

    .line 889
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->agZ:Z

    .line 890
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->aha:Z

    .line 892
    iput-boolean v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahb:Z

    .line 893
    iput v2, p0, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool$a;->ahc:I

    return-void
.end method
