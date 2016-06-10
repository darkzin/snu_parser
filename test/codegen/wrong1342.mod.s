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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $97, %eax               #   1:     if     97 # 97 goto 4
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, -25(%ebp)         
    jmp     l_f0_8                  #  10:     goto   8
l_f0_8:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #  15:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $82479, %eax            #  16:     div    t4 <- 82479, t3
    movl    -20(%ebp), %ebx        
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_15                 #  18:     goto   15
    jmp     l_f0_15                 #  19:     goto   15
    jmp     l_f0_15                 #  20:     goto   15
    jmp     l_f0_15                 #  21:     goto   15
l_f0_15:
    jmp     l_f0_14_if_false        #  23:     goto   14_if_false
    jmp     l_f0_12                 #  24:     goto   12
l_f0_14_if_false:
l_f0_12:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <char> %ebp-17 ]

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
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    movl    $99, %eax               #   3:     if     99 > 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   4:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
l_f1_9_while_cond:
    jmp     l_f1_8                  #   9:     goto   8
l_f1_12_while_cond:
    jmp     l_f1_12_while_cond      #  11:     goto   12_while_cond
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, -17(%ebp)         
    jmp     l_f1_9_while_cond       #  13:     goto   9_while_cond
l_f1_8:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 80 of <array 51 of <array 66 of <array 92 of <array 77 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 98 of <array 87 of <array 80 of <array 90 of <array 68 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 94 of <array 74 of <array 68 of <array 61 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 = 1 goto 3
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_3                 
    jmp     l_f2_0                  #   3:     goto   0
l_f2_3:
    jmp     l_f2_0                  #   5:     goto   0
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
l_f2_0:
    call    f1                      #   8:     call   f1
l_f2_6_while_cond:
    movl    $0, %eax                #  10:     if     0 = 0 goto 9
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #  11:     goto   10
l_f2_9:
    movl    $1, %eax                #  13:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_11                 #  14:     goto   11
l_f2_10:
    movl    $0, %eax                #  16:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_11:
    movzbl  -14(%ebp), %eax         #  18:     assign v4 <- t3
    movb    %al, -15(%ebp)         
    movl    $0, %eax                #  19:     assign v4 <- 0
    movb    %al, -15(%ebp)         
    jmp     l_f2_6_while_cond       #  20:     goto   6_while_cond

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_exit            
    call    dummyINTfunc            #   2:     call   t1 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
