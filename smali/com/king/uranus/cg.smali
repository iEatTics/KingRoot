.class public final enum Lcom/king/uranus/cg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/king/uranus/cg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum wB:Lcom/king/uranus/cg;

.field public static final enum wC:Lcom/king/uranus/cg;

.field public static final enum wD:Lcom/king/uranus/cg;

.field public static final enum wE:Lcom/king/uranus/cg;

.field public static final enum wF:Lcom/king/uranus/cg;

.field public static final enum wG:Lcom/king/uranus/cg;

.field public static final enum wH:Lcom/king/uranus/cg;

.field private static final synthetic wI:[Lcom/king/uranus/cg;


# instance fields
.field public final id:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 10
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Inject_Result"

    const v2, 0x3d09a

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wB:Lcom/king/uranus/cg;

    .line 13
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Load_Module_Result"

    const v2, 0x3d099

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wC:Lcom/king/uranus/cg;

    .line 16
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Start_Result"

    const v2, 0x3d096

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wD:Lcom/king/uranus/cg;

    .line 19
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Daemon_Result"

    const v2, 0x3d0a2

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wE:Lcom/king/uranus/cg;

    .line 22
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Machine_Reboot"

    const v2, 0x3d097

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wF:Lcom/king/uranus/cg;

    .line 25
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Daemon_Load_Mod_Result"

    const/4 v2, 0x5

    const v3, 0x3d0ab

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wG:Lcom/king/uranus/cg;

    .line 28
    new-instance v0, Lcom/king/uranus/cg;

    const-string v1, "EMID_KingCommon_Uranus_Load_Task_Result"

    const/4 v2, 0x6

    const v3, 0x3d0ac

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/king/uranus/cg;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/king/uranus/cg;->wH:Lcom/king/uranus/cg;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/king/uranus/cg;

    sget-object v1, Lcom/king/uranus/cg;->wB:Lcom/king/uranus/cg;

    aput-object v1, v0, v5

    sget-object v1, Lcom/king/uranus/cg;->wC:Lcom/king/uranus/cg;

    aput-object v1, v0, v6

    sget-object v1, Lcom/king/uranus/cg;->wD:Lcom/king/uranus/cg;

    aput-object v1, v0, v4

    sget-object v1, Lcom/king/uranus/cg;->wE:Lcom/king/uranus/cg;

    aput-object v1, v0, v7

    sget-object v1, Lcom/king/uranus/cg;->wF:Lcom/king/uranus/cg;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/king/uranus/cg;->wG:Lcom/king/uranus/cg;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/king/uranus/cg;->wH:Lcom/king/uranus/cg;

    aput-object v2, v0, v1

    sput-object v0, Lcom/king/uranus/cg;->wI:[Lcom/king/uranus/cg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/king/uranus/cg;->id:I

    .line 38
    iput p4, p0, Lcom/king/uranus/cg;->type:I

    .line 39
    return-void
.end method
