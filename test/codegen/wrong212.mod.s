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
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v2       <char> %ebp-15 ]

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
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -15(%ebp)         
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t2
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t5       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t6       <bool> %ebp-23 ]
    #   -9008(%ebp)  8984  [ $v0       <array 8 of <array 7 of <array 8 of <array 2 of <array 10 of <char>>>>>> %ebp-9008 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8996, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2249, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9008(%ebp)          # local array 'v0': 5 dimensions
    movl    $8,-9004(%ebp)          #   dimension 1: 8 elements
    movl    $7,-9000(%ebp)          #   dimension 2: 7 elements
    movl    $8,-8996(%ebp)          #   dimension 3: 8 elements
    movl    $2,-8992(%ebp)          #   dimension 4: 2 elements
    movl    $10,-8988(%ebp)         #   dimension 5: 10 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t1
    jmp     l_f1_exit              
l_f1_2_while_cond:
    call    dummyCHARfunc           #   3:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #   4:     if     99 # t2 goto 3_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_3_while_body      
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_while_body:
    leal    -9008(%ebp), %eax       #   7:     &()    t3 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     param  1 <- t3
    pushl   %eax                   
    movl    $100, %eax              #   9:     if     100 >= 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_6                 
    jmp     l_f1_7                  #  10:     goto   7
l_f1_6:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_8                  #  13:     goto   8
l_f1_7:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f1_8:
    movzbl  -21(%ebp), %eax         #  17:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  18:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -22(%ebp)         
    jmp     l_f1_10                 #  19:     goto   10
l_f1_10:
    jmp     l_f1_2_while_cond       #  21:     goto   2_while_cond
l_f1_1:
    movl    $99, %eax               #  23:     return 99
    jmp     l_f1_exit              
    movl    $99, %eax               #  24:     if     99 < 97 goto 18_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_18_if_true        
    jmp     l_f1_19_if_false        #  25:     goto   19_if_false
l_f1_18_if_true:
    jmp     l_f1_17                 #  27:     goto   17
l_f1_19_if_false:
l_f1_17:
    call    dummyBOOLfunc           #  30:     call   t6 <- dummyBOOLfunc
    movb    %al, -23(%ebp)         
    movl    $98, %eax               #  31:     if     98 > 100 goto 23_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  32:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  34:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_13                 #  37:     goto   13
l_f1_13:

l_f1_exit:
    # epilogue
    addl    $8996, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <char> %ebp-26 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 8 of <array 7 of <array 8 of <array 2 of <array 10 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -35(%ebp)   1  [ $t8       <char> %ebp-35 ]
    #    -36(%ebp)   1  [ $t9       <bool> %ebp-36 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 9 of <array 7 of <array 2 of <array 9 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 8 of <array 3 of <array 10 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #   -9020(%ebp)  8984  [ $v2       <array 8 of <array 7 of <array 8 of <array 2 of <array 10 of <char>>>>>> %ebp-9020 ]
    #   -9024(%ebp)   4  [ $v3       <int> %ebp-9024 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $9012, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $2253, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9020(%ebp)          # local array 'v2': 5 dimensions
    movl    $8,-9016(%ebp)          #   dimension 1: 8 elements
    movl    $7,-9012(%ebp)          #   dimension 2: 7 elements
    movl    $8,-9008(%ebp)          #   dimension 3: 8 elements
    movl    $2,-9004(%ebp)          #   dimension 4: 2 elements
    movl    $10,-9000(%ebp)         #   dimension 5: 10 elements

    # function body
    call    ReadInt                 #   0:     call   t1 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 20335
    movl    $20335, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     if     t2 = 93043 goto 1
    movl    $93043, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   3:     goto   2
l_f2_1:
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f2_3                  #   6:     goto   3
l_f2_2:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_f2_3:
    movzbl  -25(%ebp), %eax         #  10:     return t3
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  11:     call   t4 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    leal    -9020(%ebp), %eax       #  12:     &()    t5 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  13:     param  1 <- t5
    pushl   %eax                   
    call    f1                      #  14:     call   t6 <- f1
    movb    %al, -33(%ebp)         
    movl    $100, %eax              #  15:     if     100 = t6 goto 10
    movzbl  -33(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10                
    jmp     l_f2_11                 #  16:     goto   11
l_f2_10:
    movl    $1, %eax                #  18:     assign t7 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f2_12                 #  19:     goto   12
l_f2_11:
    movl    $0, %eax                #  21:     assign t7 <- 0
    movb    %al, -34(%ebp)         
l_f2_12:
    movzbl  -34(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  24:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -35(%ebp)         
    movzbl  -26(%ebp), %eax         #  25:     if     t4 < t8 goto 6
    movzbl  -35(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_6                 
    jmp     l_f2_7                  #  26:     goto   7
l_f2_6:
    movl    $1, %eax                #  28:     assign t9 <- 1
    movb    %al, -36(%ebp)         
    jmp     l_f2_8                  #  29:     goto   8
l_f2_7:
    movl    $0, %eax                #  31:     assign t9 <- 0
    movb    %al, -36(%ebp)         
l_f2_8:
    movzbl  -36(%ebp), %eax         #  33:     return t9
    jmp     l_f2_exit              
l_f2_18_while_cond:
    movl    $98, %eax               #  35:     if     98 # 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_19_while_body     
    jmp     l_f2_17                 #  36:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  38:     goto   18_while_cond
l_f2_17:
    call    WriteLn                 #  40:     call   WriteLn
    jmp     l_f2_24_if_false        #  41:     goto   24_if_false
    jmp     l_f2_22                 #  42:     goto   22
l_f2_24_if_false:
l_f2_22:
    call    dummyINTfunc            #  45:     call   t10 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $22050, %eax            #  46:     assign v3 <- 22050
    movl    %eax, -9024(%ebp)      
    jmp     l_f2_14                 #  47:     goto   14
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $9012, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
l_test_6_while_cond:
    movl    $48893, %eax            #   4:     if     48893 # 97283 goto 7_while_body
    movl    $97283, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #   5:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   7:     goto   6_while_cond
l_test_5:
    movl    $36305, %eax            #   9:     assign v0 <- 36305
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_1                #  11:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $100, %eax              #  14:     assign v1 <- 100
    movb    %al, v1                
    call    f1                      #  15:     call   t0 <- f1
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     assign v1 <- t0
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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
