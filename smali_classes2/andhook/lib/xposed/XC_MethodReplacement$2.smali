.class final Landhook/lib/xposed/XC_MethodReplacement$2;
.super Landhook/lib/xposed/XC_MethodReplacement;
.source "XC_MethodReplacement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landhook/lib/xposed/XC_MethodReplacement;->returnConstant(ILjava/lang/Object;)Landhook/lib/xposed/XC_MethodReplacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 81
    iput-object p2, p0, Landhook/lib/xposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0, p1}, Landhook/lib/xposed/XC_MethodReplacement;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected replaceHookedMethod(Landhook/lib/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    iget-object p1, p0, Landhook/lib/xposed/XC_MethodReplacement$2;->val$result:Ljava/lang/Object;

    return-object p1
.end method
