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
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 91 of <array 85 of <array 42 of <array 17 of <array 14 of <bool>>>>>>> %ebp+12 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v4       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $11587, %eax            #   0:     div    t1 <- 11587, 33907
    movl    $33907, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 26305
    movl    $26305, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 72774
    movl    $72774, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v3 <- t3
    movl    %eax, -32(%ebp)        
    call    dummyCHARfunc           #   4:     call   t4 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   5:     assign v1 <- t4
    movb    %al, 8(%ebp)           
l_f0_3_while_cond:
    movl    $50767, %eax            #   7:     return 50767
    jmp     l_f0_exit              
    movl    $0, %eax                #   8:     assign v4 <- 0
    movb    %al, -33(%ebp)         
    jmp     l_f0_3_while_cond       #   9:     goto   3_while_cond

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 91 of <array 85 of <array 42 of <array 17 of <array 14 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <char> %ebp-29 ]
    #   -77319116(%ebp)  77319084  [ $v1       <array 91 of <array 85 of <array 42 of <array 17 of <array 14 of <bool>>>>>> %ebp-77319116 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $77319104, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19329776, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-77319116(%ebp)      # local array 'v1': 5 dimensions
    movl    $91,-77319112(%ebp)     #   dimension 1: 91 elements
    movl    $85,-77319108(%ebp)     #   dimension 2: 85 elements
    movl    $42,-77319104(%ebp)     #   dimension 3: 42 elements
    movl    $17,-77319100(%ebp)     #   dimension 4: 17 elements
    movl    $14,-77319096(%ebp)     #   dimension 5: 14 elements

    # function body
    leal    -77319116(%ebp), %eax   #   0:     &()    t1 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  1 <- t1
    pushl   %eax                   
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     param  0 <- t2
    pushl   %eax                   
    call    f0                      #   4:     call   t3 <- f0
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     sub    t4 <- t3, 40080
    movl    $40080, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     return t4
    jmp     l_f1_exit              
    call    WriteLn                 #   7:     call   WriteLn
    movl    $39633, %eax            #   8:     if     39633 # 68289 goto 3_if_true
    movl    $68289, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   9:     goto   4_if_false
l_f1_3_if_true:
l_f1_7_while_cond:
    movl    $89374, %eax            #  12:     if     89374 >= 11039 goto 8_while_body
    movl    $11039, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_8_while_body      
    jmp     l_f1_6                  #  13:     goto   6
l_f1_8_while_body:
    jmp     l_f1_7_while_cond       #  15:     goto   7_while_cond
l_f1_6:
l_f1_11_while_cond:
    call    dummyCHARfunc           #  18:     call   t5 <- dummyCHARfunc
    movb    %al, -29(%ebp)         
    movl    $97, %eax               #  19:     if     97 # t5 goto 12_while_body
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_12_while_body     
    jmp     l_f1_10                 #  20:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  22:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_2                  #  24:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $77319104, %esp         # remove locals
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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -21(%ebp)         
l_f2_2_while_cond:
    jmp     l_f2_1                  #   2:     goto   1
    jmp     l_f2_2_while_cond       #   3:     goto   2_while_cond
l_f2_1:
l_f2_6_while_cond:
    movl    $15348, %eax            #   6:     mul    t1 <- 15348, 10963
    movl    $10963, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $95259, %eax            #   7:     sub    t2 <- 95259, 52089
    movl    $52089, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   8:     if     t1 < t2 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_7_while_body      
    jmp     l_f2_5                  #   9:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  11:     goto   6_while_cond
l_f2_5:

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    movl    $47185, %eax            #   1:     if     47185 < 24295 goto 2_if_true
    movl    $24295, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
l_test_6_while_cond:
    jmp     l_test_6_while_cond     #   5:     goto   6_while_cond
    jmp     l_test_8                #   6:     goto   8
l_test_8:
    movl    $82370, %eax            #   8:     if     82370 = 81872 goto 12_if_true
    movl    $81872, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #   9:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  11:     goto   11
l_test_13_if_false:
l_test_11:
l_test_16_while_cond:
    movl    $98, %eax               #  15:     if     98 >= 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_17_while_body   
    jmp     l_test_15               #  16:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  18:     goto   16_while_cond
l_test_15:
l_test_20_while_cond:
    movl    $81498, %eax            #  21:     if     81498 = 21075 goto 21_while_body
    movl    $21075, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_21_while_body   
    jmp     l_test_19               #  22:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  24:     goto   20_while_cond
l_test_19:
l_test_24_while_cond:
    jmp     l_test_24_while_cond    #  27:     goto   24_while_cond
    jmp     l_test_1                #  28:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_28               #  32:     goto   28
l_test_28:
    movl    $1, %eax                #  34:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_30               #  35:     goto   30
    movl    $0, %eax                #  36:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_30:
    movzbl  -13(%ebp), %eax         #  38:     assign v1 <- t0
    movb    %al, v1                

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
