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
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
    jmp     l_f0_1                  #   0:     goto   1
    jmp     l_f0_1                  #   1:     goto   1
    jmp     l_f0_2                  #   2:     goto   2
l_f0_1:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   5:     goto   3
l_f0_2:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t2
    movb    %al, -18(%ebp)         
    call    dummyBOOLfunc           #  10:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f0_12                 #  11:     goto   12
l_f0_12:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  14:     goto   14
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -14(%ebp), %eax         #  17:     if     t3 # t4 goto 8
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_8                 
    jmp     l_f0_9                  #  18:     goto   9
l_f0_8:
    movl    $1, %eax                #  20:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f0_10                 #  21:     goto   10
l_f0_9:
    movl    $0, %eax                #  23:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f0_10:
    movzbl  -16(%ebp), %eax         #  25:     return t5
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #  26:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 31 of <array 99 of <array 70 of <array 13 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    movl    $65123, %eax            #   1:     assign v3 <- 65123
    movl    %eax, 20(%ebp)         
    jmp     l_f1_4                  #   2:     goto   4
l_f1_4:
    movl    $99, %eax               #   4:     assign v4 <- 99
    movb    %al, -14(%ebp)         
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #   6:     goto   9_while_cond
    movl    $98, %eax               #   7:     if     98 < 100 goto 12_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #   8:     goto   13_if_false
l_f1_12_if_true:
    jmp     l_f1_11                 #  10:     goto   11
l_f1_13_if_false:
l_f1_11:
    movl    $0, %eax                #  13:     if     0 = 1 goto 16
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16                
    jmp     l_f1_17                 #  14:     goto   17
l_f1_16:
    movl    $1, %eax                #  16:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_18                 #  17:     goto   18
l_f1_17:
    movl    $0, %eax                #  19:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_18:
    movzbl  -13(%ebp), %eax         #  21:     return t2
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  22:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyProcedure          #  25:     call   dummyProcedure
l_f1_22_while_cond:
    jmp     l_f1_23_while_body      #  27:     goto   23_while_body
l_f1_23_while_body:
    jmp     l_f1_22_while_cond      #  29:     goto   22_while_cond

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    jmp     l_f2_exit              
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     assign v1 <- t3
    movl    %eax, 12(%ebp)         

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
    movl    $100, %eax              #   0:     if     100 < 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
l_test_6_while_cond:
    call    ReadInt                 #   8:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $23931, %eax            #   9:     add    t1 <- 23931, 20683
    movl    $20683, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  10:     if     t0 >= t1 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #  11:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  13:     goto   6_while_cond
l_test_5:
    jmp     l_test_exit            
    call    dummyProcedure          #  16:     call   dummyProcedure
    jmp     l_test_exit            

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
