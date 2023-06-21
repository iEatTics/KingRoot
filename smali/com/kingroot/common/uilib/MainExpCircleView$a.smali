.class public final enum Lcom/kingroot/common/uilib/MainExpCircleView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/MainExpCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/common/uilib/MainExpCircleView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field public static final enum Oi:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field public static final enum Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

.field private static final synthetic Ok:[Lcom/kingroot/common/uilib/MainExpCircleView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/common/uilib/MainExpCircleView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 46
    new-instance v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/common/uilib/MainExpCircleView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oi:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 47
    new-instance v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;

    const-string v1, "ROOT_ABNORMAL"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/common/uilib/MainExpCircleView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kingroot/common/uilib/MainExpCircleView$a;

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oh:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oi:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Oj:Lcom/kingroot/common/uilib/MainExpCircleView$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Ok:[Lcom/kingroot/common/uilib/MainExpCircleView$a;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/common/uilib/MainExpCircleView$a;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/common/uilib/MainExpCircleView$a;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/kingroot/common/uilib/MainExpCircleView$a;->Ok:[Lcom/kingroot/common/uilib/MainExpCircleView$a;

    invoke-virtual {v0}, [Lcom/kingroot/common/uilib/MainExpCircleView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/common/uilib/MainExpCircleView$a;

    return-object v0
.end method
