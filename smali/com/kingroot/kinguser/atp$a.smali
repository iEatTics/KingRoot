.class public Lcom/kingroot/kinguser/atp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/ame;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public aPN:Z

.field public aPO:Landroid/view/View$OnClickListener;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/atp$a;->aPN:Z

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/atp$a;->aPO:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x5

    return v0
.end method
