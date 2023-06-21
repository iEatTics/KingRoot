.class public final enum Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/uilib/SlidingUpPanelLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field public static final enum Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field public static final enum Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field public static final enum Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field public static final enum Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

.field private static final synthetic Sj:[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    const-string v1, "EXPANDED"

    invoke-direct {v0, v1, v2}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 177
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    const-string v1, "COLLAPSED"

    invoke-direct {v0, v1, v3}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 178
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    const-string v1, "ANCHORED"

    invoke-direct {v0, v1, v4}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 179
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 180
    new-instance v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    const-string v1, "DRAGGING"

    invoke-direct {v0, v1, v6}, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    .line 175
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Se:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sf:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sg:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sh:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Si:Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sj:[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 1

    .prologue
    .line 175
    const-class v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object v0
.end method

.method public static values()[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->Sj:[Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    invoke-virtual {v0}, [Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kingroot/common/uilib/SlidingUpPanelLayout$c;

    return-object v0
.end method
