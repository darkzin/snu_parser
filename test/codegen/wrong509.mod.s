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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 7 of <array 8 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 7 of <array 7 of <array 9 of <array 5 of <char>>>>>>> %ebp+16 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    movl    $0, %eax                #   0:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    movl    $51789, %eax            #   1:     mul    t1 <- 51789, 13978
    movl    $13978, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $77871, %eax            #   2:     sub    t2 <- 77871, t1
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t2 <= 15957 goto 2
    movl    $15957, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   4:     goto   3
l_f0_2:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f0_4:
    movzbl  -21(%ebp), %eax         #  11:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_8_if_false         #  12:     goto   8_if_false
    movl    $27285, %eax            #  13:     if     27285 < 43480 goto 10_if_true
    movl    $43480, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  14:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  16:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $0, %eax                #  19:     assign v2 <- 0
    movb    %al, 12(%ebp)          
    movl    $100, %eax              #  20:     assign v4 <- 100
    movb    %al, -22(%ebp)         
    jmp     l_f0_6                  #  21:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 5 of <array 2 of <array 2 of <array 3 of <bool>>>>>>> %ebp+12 ]

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
    movl    $37876, %eax            #   0:     sub    t1 <- 37876, 25123
    movl    $25123, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
    movl    $37311, %eax            #   2:     sub    t2 <- 37311, 64785
    movl    $64785, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     return t2
    jmp     l_f1_exit              
    movl    $1, %eax                #   4:     assign v1 <- 1
    movb    %al, 8(%ebp)           

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
    movl    $19723, %eax            #   0:     mul    t1 <- 19723, 65226
    movl    $65226, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v1 <- t1
    movl    %eax, -24(%ebp)        
l_f2_2_while_cond:
    movl    $99, %eax               #   3:     if     99 = 97 goto 3_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
    movl    $24218, %eax            #   6:     return 24218
    jmp     l_f2_exit              
    movl    $56995, %eax            #   7:     assign v1 <- 56995
    movl    %eax, -24(%ebp)        
    jmp     l_f2_2_while_cond       #   8:     goto   2_while_cond
l_f2_1:
    movl    $25006, %eax            #  10:     div    t2 <- 25006, 51628
    movl    $51628, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t2
    jmp     l_f2_exit              

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
    jmp     l_test_1                #   0:     goto   1
    jmp     l_test_1                #   1:     goto   1
    jmp     l_test_1                #   2:     goto   1
    jmp     l_test_1                #   3:     goto   1
    jmp     l_test_2                #   4:     goto   2
l_test_1:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   7:     goto   3
l_test_2:
    movl    $0, %eax                #   9:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  11:     assign v0 <- t0
    movb    %al, v0                
l_test_11_while_cond:
    jmp     l_test_10               #  13:     goto   10
l_test_14_while_cond:
    movl    $0, %eax                #  15:     if     0 = 0 goto 15_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_while_body   
    jmp     l_test_13               #  16:     goto   13
l_test_15_while_body:
    jmp     l_test_exit            
    jmp     l_test_14_while_cond    #  19:     goto   14_while_cond
l_test_13:
    jmp     l_test_11_while_cond    #  21:     goto   11_while_cond
l_test_10:
l_test_23_while_cond:
    jmp     l_test_23_while_cond    #  24:     goto   23_while_cond
    jmp     l_test_18               #  25:     goto   18
l_test_18:
    movl    $70778, %eax            #  27:     assign v1 <- 70778
    movl    %eax, v1               

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

    # scope: test
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
