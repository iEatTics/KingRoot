.class public Lcom/kingroot/kinguser/age$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/age;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public ajP:Landroid/widget/TextView;

.field public akY:Landroid/widget/TextView;

.field final synthetic akZ:Lcom/kingroot/kinguser/age;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/age;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/kingroot/kinguser/age$a;->akZ:Lcom/kingroot/kinguser/age;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
