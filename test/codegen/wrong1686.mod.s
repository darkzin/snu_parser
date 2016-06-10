##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 7 of <array 67 of <array 34 of <array 65 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $1, %eax                #   0:     if     1 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    ReadInt                 #   3:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   4:     return 1
    jmp     l_f0_exit              
    call    WriteLn                 #   5:     call   WriteLn
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #   9:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $99, %eax               #  10:     if     99 > t1 goto 8
    movzbl  -17(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_8                 
    jmp     l_f0_9                  #  11:     goto   9
l_f0_8:
    movl    $1, %eax                #  13:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_10                 #  14:     goto   10
l_f0_9:
    movl    $0, %eax                #  16:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f0_10:
    movzbl  -18(%ebp), %eax         #  18:     return t2
    jmp     l_f0_exit              
    movl    $99, %eax               #  19:     if     99 < 97 goto 13_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  20:     goto   14_if_false
l_f0_13_if_true:
    movl    $31048, %eax            #  22:     if     31048 = 4556 goto 17_if_true
    movl    $4556, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  23:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  25:     goto   16
l_f0_18_if_false:
l_f0_16:
    movl    $0, %eax                #  28:     return 0
    jmp     l_f0_exit              
    movl    $35925, %eax            #  29:     assign v2 <- 35925
    movl    %eax, 16(%ebp)         
l_f0_23_while_cond:
    movl    $59141, %eax            #  31:     if     59141 # 90813 goto 24_while_body
    movl    $90813, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_24_while_body     
    jmp     l_f0_22                 #  32:     goto   22
l_f0_24_while_body:
    jmp     l_f0_23_while_cond      #  34:     goto   23_while_cond
l_f0_22:
    jmp     l_f0_26                 #  36:     goto   26
l_f0_26:
    movl    $0, %eax                #  38:     if     0 # 1 goto 30_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_30_if_true        
    jmp     l_f0_31_if_false        #  39:     goto   31_if_false
l_f0_30_if_true:
    jmp     l_f0_29                 #  41:     goto   29
l_f0_31_if_false:
l_f0_29:
    jmp     l_f0_12                 #  44:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 35 of <array 79 of <array 86 of <array 19 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 17 of <array 39 of <array 97 of <array 64 of <array 2 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 94 of <array 28 of <array 63 of <array 55 of <array 3 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    jmp     l_f1_exit              
l_f1_5_while_cond:
    jmp     l_f1_4                  #   3:     goto   4
    jmp     l_f1_5_while_cond       #   4:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #   6:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   9:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $v0       <char> %ebp-16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     assign v0 <- t1
    movb    %al, -16(%ebp)         
    movl    $1, %eax                #   7:     if     1 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7_if_true         
    jmp     l_f2_8_if_false         #   8:     goto   8_if_false
l_f2_7_if_true:
    jmp     l_f2_12_if_false        #  10:     goto   12_if_false
    jmp     l_f2_10                 #  11:     goto   10
l_f2_12_if_false:
l_f2_10:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f2_6                  #  15:     goto   6
l_f2_8_if_false:
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    WriteLn                 #   7:     call   WriteLn

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4









    # end of global data section
    #-----------------------------------------

    .end
##################################################
