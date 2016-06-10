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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v0       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     if     97 > t7 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_exit              
    jmp     l_f0_5_while_cond       #   9:     goto   5_while_cond
    movl    $18043, %eax            #  10:     sub    t8 <- 18043, 82951
    movl    $82951, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     assign v0 <- t8
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    movl    $80627, %eax            #   0:     if     80627 = 46471 goto 1_if_true
    movl    $46471, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    movl    $50829, %eax            #   3:     if     50829 < 50063 goto 5
    movl    $50063, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_5                 
    jmp     l_f1_6                  #   4:     goto   6
l_f1_5:
    movl    $1, %eax                #   6:     assign t7 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_7                  #   7:     goto   7
l_f1_6:
    movl    $0, %eax                #   9:     assign t7 <- 0
    movb    %al, -13(%ebp)         
l_f1_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t7
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #  12:     call   t8 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  16:     assign v2 <- 98
    movb    %al, -16(%ebp)         
l_f1_12_while_cond:
    movl    $99, %eax               #  18:     if     99 < 99 goto 13_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  19:     goto   11
l_f1_13_while_body:
    movl    $13743, %eax            #  21:     assign v0 <- 13743
    movl    %eax, 8(%ebp)          
    call    WriteLn                 #  22:     call   WriteLn
l_f1_18_while_cond:
    jmp     l_f1_17                 #  24:     goto   17
    jmp     l_f1_18_while_cond      #  25:     goto   18_while_cond
l_f1_17:
l_f1_21_while_cond:
    movl    $68640, %eax            #  28:     if     68640 < 12809 goto 22_while_body
    movl    $12809, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_22_while_body     
    jmp     l_f1_20                 #  29:     goto   20
l_f1_22_while_body:
    jmp     l_f1_21_while_cond      #  31:     goto   21_while_cond
l_f1_20:
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_12_while_cond      #  35:     goto   12_while_cond
l_f1_11:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 7 of <array 10 of <array 6 of <array 1 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 2 of <array 2 of <array 2 of <array 6 of <int>>>>>>> %ebp+20 ]
    #    -26(%ebp)   1  [ $v4       <bool> %ebp-26 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f2_4_while_cond:
    jmp     l_f2_3                  #   1:     goto   3
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
l_f2_3:
    movl    $17767, %eax            #   4:     return 17767
    jmp     l_f2_exit              
    movl    $1, %eax                #   5:     assign v4 <- 1
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #   6:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $62698, %eax            #   7:     return 62698
    jmp     l_f2_exit              
    movl    $99, %eax               #   8:     if     99 >= 97 goto 11_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #   9:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  11:     goto   10
l_f2_12_if_false:
l_f2_10:
    movl    $81717, %eax            #  14:     return 81717
    jmp     l_f2_exit              
    movl    $48484, %eax            #  15:     assign v2 <- 48484
    movl    %eax, 16(%ebp)         
    jmp     l_f2_0                  #  16:     goto   0
l_f2_0:
l_f2_17_while_cond:
    movl    $13773, %eax            #  19:     if     13773 = 56397 goto 18_while_body
    movl    $56397, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_18_while_body     
    jmp     l_f2_16                 #  20:     goto   16
l_f2_18_while_body:
    call    dummyINTfunc            #  22:     call   t8 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $0, %eax                #  23:     assign v4 <- 0
    movb    %al, -26(%ebp)         
    movl    $24662, %eax            #  24:     return 24662
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  25:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
l_f2_25_while_cond:
    jmp     l_f2_25_while_cond      #  27:     goto   25_while_cond
    jmp     l_f2_17_while_cond      #  28:     goto   17_while_cond
l_f2_16:
    call    dummyINTfunc            #  30:     call   t10 <- dummyINTfunc
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_0                #   0:     goto   0
l_test_0:
    movl    $97, %eax               #   2:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
    call    dummyBOOLfunc           #   4:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $44335, %eax            #   5:     mul    t1 <- 44335, 98435
    movl    $98435, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     div    t2 <- t1, 65060
    movl    $65060, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     div    t3 <- t2, 71248
    movl    $71248, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t4 <- t3, 12570
    movl    $12570, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     add    t5 <- t4, 15861
    movl    $15861, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  10:     assign v0 <- t5
    movl    %eax, v0               
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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

    # scope: test
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
