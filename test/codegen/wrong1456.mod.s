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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v2       <bool> %ebp-15 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v1 <- t1
    movb    %al, -14(%ebp)         
    movl    $1, %eax                #   3:     assign v2 <- 1
    movb    %al, -15(%ebp)         

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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 19 of <array 13 of <array 3 of <array 29 of <array 24 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #    -13(%ebp)   1  [ $v3       <char> %ebp-13 ]

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
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #   6:     assign v3 <- 97
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   7:     if     99 >= 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #   8:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_14                 #  10:     goto   14
l_f1_14:
    jmp     l_f1_10                 #  12:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_6                  #  15:     goto   6
l_f1_6:
    movl    $100, %eax              #  17:     if     100 # 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  18:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  20:     goto   17
l_f1_19_if_false:
l_f1_17:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 88 of <array 15 of <array 60 of <array 59 of <array 60 of <bool>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v1       <char> %ebp-21 ]

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
    movl    $98, %eax               #   0:     assign v1 <- 98
    movb    %al, -21(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f2_exit              
    movl    $73132, %eax            #   3:     if     73132 >= 59339 goto 3_if_true
    movl    $59339, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_3_if_true         
    jmp     l_f2_4_if_false         #   4:     goto   4_if_false
l_f2_3_if_true:
    call    dummyCHARfunc           #   6:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $34806, %eax            #   7:     param  0 <- 34806
    pushl   %eax                   
    call    f0                      #   8:     call   t3 <- f0
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2                  #   9:     goto   2
l_f2_4_if_false:
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]

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
    jmp     l_test_exit            
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    jmp     l_test_exit            
    movl    $69349, %eax            #   3:     if     69349 > 12542 goto 6_if_true
    movl    $12542, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_6_if_true       
    jmp     l_test_7_if_false       #   4:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   6:     goto   5
l_test_7_if_false:
l_test_5:
l_test_10_while_cond:
    movl    $65936, %eax            #  10:     if     65936 < 37093 goto 11_while_body
    movl    $37093, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_11_while_body   
    jmp     l_test_9                #  11:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  13:     goto   10_while_cond
l_test_9:
    jmp     l_test_exit            
    jmp     l_test_1                #  16:     goto   1
l_test_3_if_false:
l_test_1:
l_test_15_while_cond:
    movl    $8199, %eax             #  20:     div    t0 <- 8199, 37855
    movl    $37855, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $42314, %eax            #  21:     if     42314 >= t0 goto 16_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:

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
