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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 100 of <array 37 of <array 63 of <array 87 of <array 32 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 49 of <array 46 of <array 67 of <array 27 of <array 26 of <bool>>>>>>> %ebp+12 ]
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
    movl    $99, %eax               #   0:     assign v3 <- 99
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     return t1
    jmp     l_f0_exit              
    movl    $98, %eax               #   3:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #   4:     call   WriteChar
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 49 of <array 46 of <array 67 of <array 27 of <array 26 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 100 of <array 37 of <array 63 of <array 87 of <array 32 of <int>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 57 of <array 24 of <array 91 of <array 15 of <array 21 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 96 of <array 13 of <array 11 of <array 26 of <array 31 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 44 of <array 85 of <array 39 of <array 34 of <array 18 of <bool>>>>>>> %ebp+20 ]
    #   1699165644(%ebp)  -1699165672  [ $v5       <array 100 of <array 37 of <array 63 of <array 87 of <array 32 of <int>>>>>> %ebp+1699165644 ]
    #   1593150984(%ebp)  106014660  [ $v6       <array 49 of <array 46 of <array 67 of <array 27 of <array 26 of <bool>>>>>> %ebp+1593150984 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1593150996, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-398287749, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1699165644(%ebp)     # local array 'v5': 5 dimensions
    movl    $100,1699165648(%ebp)   #   dimension 1: 100 elements
    movl    $37,1699165652(%ebp)    #   dimension 2: 37 elements
    movl    $63,1699165656(%ebp)    #   dimension 3: 63 elements
    movl    $87,1699165660(%ebp)    #   dimension 4: 87 elements
    movl    $32,1699165664(%ebp)    #   dimension 5: 32 elements
    movl    $5,1593150984(%ebp)     # local array 'v6': 5 dimensions
    movl    $49,1593150988(%ebp)    #   dimension 1: 49 elements
    movl    $46,1593150992(%ebp)    #   dimension 2: 46 elements
    movl    $67,1593150996(%ebp)    #   dimension 3: 67 elements
    movl    $27,1593151000(%ebp)    #   dimension 4: 27 elements
    movl    $26,1593151004(%ebp)    #   dimension 5: 26 elements

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $5211, %eax             #   1:     if     5211 # 29869 goto 2_if_true
    movl    $29869, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_2_if_true:
l_f1_6_while_cond:
    jmp     l_f1_5                  #   5:     goto   5
    jmp     l_f1_6_while_cond       #   6:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
    leal    1593150984(%ebp), %eax  #  11:     &()    t2 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     param  1 <- t2
    pushl   %eax                   
    leal    1699165644(%ebp), %eax  #  13:     &()    t3 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  15:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $-1593150996, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f2_exit              
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $60105, %eax            #   3:     if     60105 = 9190 goto 4_while_body
    movl    $9190, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_10_while_cond:
    jmp     l_f2_9                  #   9:     goto   9
    jmp     l_f2_10_while_cond      #  10:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_3_while_cond       #  12:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    movl    $1, %eax                #   1:     if     1 = 1 goto 2
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2               
    jmp     l_test_3                #   2:     goto   3
l_test_2:
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_4                #   5:     goto   4
l_test_3:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_4:
    movzbl  -13(%ebp), %eax         #   9:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
