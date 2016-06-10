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
    #    -13(%ebp)   1  [ $v0       <bool> %ebp-13 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $0, %eax                #   1:     assign v0 <- 0
    movb    %al, -13(%ebp)         
l_f0_5_while_cond:
    jmp     l_f0_4                  #   3:     goto   4
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_0                  #   6:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyProcedure          #   9:     call   dummyProcedure
    movl    $0, %eax                #  10:     if     0 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  11:     goto   10_if_false
l_f0_9_if_true:
    movl    $97, %eax               #  13:     return 97
    jmp     l_f0_exit              
    movl    $99, %eax               #  14:     if     99 # 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  15:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  17:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $99, %eax               #  20:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_8                  #  21:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 1 of <array 10 of <array 8 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 1 of <array 2 of <array 4 of <array 10 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 4
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_4                 
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_4:
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #   8:     call   t3 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $20266, %eax            #   9:     add    t4 <- 20266, 96256
    movl    $96256, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     sub    t5 <- t4, 48986
    movl    $48986, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  11:     return t5
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t5       <bool> %ebp-19 ]
    #    -20(%ebp)   1  [ $v0       <bool> %ebp-20 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t3 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6                 
    jmp     l_f2_7                  #   3:     goto   7
l_f2_6:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_8                  #   6:     goto   8
l_f2_7:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f2_8:
    movl    $1, %eax                #  10:     if     1 = t4 goto 2
    movzbl  -18(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2                 
    jmp     l_f2_3                  #  11:     goto   3
l_f2_2:
    movl    $1, %eax                #  13:     assign t5 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f2_4                  #  14:     goto   4
l_f2_3:
    movl    $0, %eax                #  16:     assign t5 <- 0
    movb    %al, -19(%ebp)         
l_f2_4:
    movzbl  -19(%ebp), %eax         #  18:     assign v0 <- t5
    movb    %al, -20(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_10                 #  20:     goto   10
    movl    $66809, %eax            #  21:     return 66809
    jmp     l_f2_exit              
    jmp     l_f2_14                 #  22:     goto   14
l_f2_14:
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  25:     goto   18_while_cond
    movl    $97, %eax               #  26:     if     97 < 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_21_if_true        
    jmp     l_f2_22_if_false        #  27:     goto   22_if_false
l_f2_21_if_true:
    jmp     l_f2_20                 #  29:     goto   20
l_f2_22_if_false:
l_f2_20:
    jmp     l_f2_11_while_cond      #  32:     goto   11_while_cond
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    call    f0                      #   0:     call   t0 <- f0
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $98, %eax               #   3:     if     98 > 99 goto 4_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   7:     if     t1 = 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_7_if_true       
    jmp     l_test_8_if_false       #   8:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  10:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
