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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    movl    $99, %eax               #   0:     assign v2 <- 99
    movb    %al, -21(%ebp)         
    call    ReadInt                 #   1:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v1 <- t3
    movl    %eax, 12(%ebp)         
    call    ReadInt                 #   3:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 67 of <array 94 of <array 66 of <array 97 of <array 23 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 83 of <array 78 of <array 2 of <array 98 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 11 of <array 34 of <array 82 of <array 73 of <array 33 of <char>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v3 <- t3
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   2:     assign v3 <- 97
    movb    %al, -14(%ebp)         
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #   4:     goto   4_while_body
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   6:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 62 of <array 19 of <array 28 of <array 37 of <array 100 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 86 of <array 45 of <array 52 of <array 35 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 73 of <array 9 of <array 89 of <array 77 of <array 60 of <char>>>>>>> %ebp+20 ]
    #    -28(%ebp)   4  [ $v4       <int> %ebp-28 ]

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
    jmp     l_f2_4_while_cond       #   1:     goto   4_while_cond
l_f2_7_while_cond:
    movl    $0, %eax                #   3:     if     0 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   4:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #   6:     goto   7_while_cond
l_f2_6:
l_f2_11_while_cond:
    movl    $0, %eax                #   9:     if     0 # 0 goto 12_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_12_while_body     
    jmp     l_f2_10                 #  10:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  12:     goto   11_while_cond
l_f2_10:
    movl    $55585, %eax            #  14:     assign v4 <- 55585
    movl    %eax, -28(%ebp)        
    movl    $97942, %eax            #  15:     assign v4 <- 97942
    movl    %eax, -28(%ebp)        
l_f2_17_while_cond:
    jmp     l_f2_17_while_cond      #  17:     goto   17_while_cond
    movl    $61489, %eax            #  18:     return 61489
    jmp     l_f2_exit              
    jmp     l_f2_0                  #  19:     goto   0
l_f2_0:
l_f2_21_while_cond:
    movl    $67280, %eax            #  22:     sub    t3 <- 67280, 22786
    movl    $22786, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     sub    t4 <- t3, 80149
    movl    $80149, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     if     t4 >= 33302 goto 22_while_body
    movl    $33302, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_22_while_body     
    jmp     l_f2_20                 #  25:     goto   20
l_f2_22_while_body:
    jmp     l_f2_21_while_cond      #  27:     goto   21_while_cond
l_f2_20:
    call    dummyCHARfunc           #  29:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

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
    jmp     l_test_exit            
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
    movl    $97, %eax               #   2:     assign v0 <- 97
    movb    %al, v0                
    movl    $1558, %eax             #   3:     param  1 <- 1558
    pushl   %eax                   
    jmp     l_test_8                #   4:     goto   8
l_test_8:
    movl    $1, %eax                #   6:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_10               #   7:     goto   10
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_10:
    movzbl  -13(%ebp), %eax         #  10:     if     t0 = 0 goto 4
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_4               
    jmp     l_test_5                #  11:     goto   5
l_test_4:
    movl    $1, %eax                #  13:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_6                #  14:     goto   6
l_test_5:
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_6:
    movzbl  -14(%ebp), %eax         #  18:     param  0 <- t1
    pushl   %eax                   
    call    f0                      #  19:     call   t2 <- f0
    addl    $8, %esp               
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

    # scope: test
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
