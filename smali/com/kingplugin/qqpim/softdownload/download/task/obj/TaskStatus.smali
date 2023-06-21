.class public final enum Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum COMPLETE:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum DELETED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum DOWNLOADING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum FAILED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum PAUSED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

.field public static final enum STARTED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v4}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->STARTED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v5}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DOWNLOADING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->COMPLETE:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->FAILED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "PAUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PAUSED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    new-instance v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    const-string v1, "DELETED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DELETED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    .line 7
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PENDING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->STARTED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DOWNLOADING:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->COMPLETE:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->FAILED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->PAUSED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->DELETED:Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->$VALUES:[Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    return-object v0
.end method

.method public static values()[Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->$VALUES:[Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    invoke-virtual {v0}, [Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingplugin/qqpim/softdownload/download/task/obj/TaskStatus;

    return-object v0
.end method
