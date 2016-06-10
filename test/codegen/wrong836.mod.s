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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_4_if_false         #   2:     goto   4_if_false
l_f0_6_while_cond:
    movl    $83199, %eax            #   4:     if     83199 # 13570 goto 7_while_body
    movl    $13570, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   5:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #   7:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    movl    $97, %eax               #  10:     if     97 > 100 goto 11_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #  11:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  13:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_2                  #  15:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
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
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $80392, %eax            #   1:     sub    t4 <- 80392, t3
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v0 <- t4
    movl    %eax, -24(%ebp)        
    jmp     l_f1_exit              
    movl    $100, %eax              #   4:     param  0 <- 100
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 1 of <array 3 of <array 9 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 10 of <array 9 of <array 2 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 6 of <array 4 of <array 10 of <array 8 of <bool>>>>>>> %ebp+16 ]

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
    movl    $99, %eax               #   0:     return 99
    jmp     l_f2_exit              
    movl    $98, %eax               #   1:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
l_f2_3_while_cond:
    movl    $82169, %eax            #   4:     mul    t3 <- 82169, 43795
    movl    $43795, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     div    t4 <- t3, 11693
    movl    $11693, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   6:     if     t4 # 10061 goto 4_while_body
    movl    $10061, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_4_while_body      
    jmp     l_f2_2                  #   7:     goto   2
l_f2_4_while_body:
    call    dummyINTfunc            #   9:     call   t5 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    jmp     l_f2_9_if_false         #  10:     goto   9_if_false
    jmp     l_f2_7                  #  11:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_3_while_cond       #  14:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
l_test_1_while_cond:
    movl    $100, %eax              #   1:     if     100 = 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $97, %eax               #   4:     if     97 >= 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
l_test_9_while_cond:
    movl    $95526, %eax            #   8:     if     95526 <= 15426 goto 10_while_body
    movl    $15426, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_while_body   
    jmp     l_test_8                #   9:     goto   8
l_test_10_while_body:
    jmp     l_test_9_while_cond     #  11:     goto   9_while_cond
l_test_8:
l_test_13_while_cond:
    jmp     l_test_13_while_cond    #  14:     goto   13_while_cond
    jmp     l_test_17_if_false      #  15:     goto   17_if_false
    jmp     l_test_15               #  16:     goto   15
l_test_17_if_false:
l_test_15:
l_test_19_while_cond:
    movl    $75262, %eax            #  20:     if     75262 >= 16233 goto 20_while_body
    movl    $16233, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_20_while_body   
    jmp     l_test_18               #  21:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  23:     goto   19_while_cond
l_test_18:
    movl    $34786, %eax            #  25:     if     34786 = 25631 goto 23_if_true
    movl    $25631, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_23_if_true      
    jmp     l_test_24_if_false      #  26:     goto   24_if_false
l_test_23_if_true:
    jmp     l_test_22               #  28:     goto   22
l_test_24_if_false:
l_test_22:
    movl    $99, %eax               #  31:     assign v0 <- 99
    movb    %al, v0                
    call    dummyBOOLfunc           #  32:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #  33:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_1_while_cond     #  36:     goto   1_while_cond
l_test_0:
    jmp     l_test_30_if_false      #  38:     goto   30_if_false
l_test_35_while_cond:
    jmp     l_test_35_while_cond    #  40:     goto   35_while_cond
    call    f1                      #  41:     call   f1
    jmp     l_test_38               #  42:     goto   38
l_test_38:
    jmp     l_test_31               #  44:     goto   31
l_test_31:
    jmp     l_test_28               #  46:     goto   28
l_test_30_if_false:
l_test_28:
    movl    $5829, %eax             #  49:     add    t1 <- 5829, 21540
    movl    $21540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  50:     if     t1 < 51297 goto 42_if_true
    movl    $51297, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_42_if_true      
    jmp     l_test_43_if_false      #  51:     goto   43_if_false
l_test_42_if_true:
    call    ReadInt                 #  53:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    jmp     l_test_41               #  54:     goto   41
l_test_43_if_false:
l_test_41:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
